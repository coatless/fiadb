#' Obtain a list of species in a given state
#' 
#' Provides a list of species that exist in a given state
#' @param state A \code{int} or \code{string} that contains either the state ID or 
#' @param con A \code{RPostgreSQL} connection. 
#' @details Follows the state codes listed in here:
#' @return A \code{data.frame} containing species in states. 
#' @export
state.species = function(state, con = db.options("db")){
  
  state = get.state(state)
  
  df = dbGetQuery(con, statement = paste0(
    "SELECT spcd, genus || ' ' || species as Genus_Species
    FROM fia.ref_species
    WHERE
    ref_species.spcd IN (
    SELECT DISTINCT tree.spcd
    FROM fia.tree
    WHERE tree.statecd = ",state," 
    )"
  ))
  df
}

#' DBH Information for Trees in Given State
#' 
#' Trees in a given state win!
#' @param state A \code{int} or \code{string} that contains either the state ID or 
#' @param con A \code{RPostgreSQL} connection. 
#' @return A \code{data.frame} containing tree dbh information in states. 
#' @export
state.dbh = function(state, con = db.options("db")){
  state = get.state(state)
  df = dbGetQuery(con, statement=paste0("select genus, species, genus ||' '|| species as GenusSpecies,
 CN, PLT_CN, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, TREE, DIA
from fia.ref_species, fia.tree
where tree.DIAHTCD = 1 and tree.STATECD=", state," and tree.spcd = ref_species.spcd
"))
  df
}


#' DBH Information for Trees in Given State
#' 
#' Trees in a given state win!
#' @param state A \code{int} or \code{string} that contains either the state ID or 
#' @param con A \code{RPostgreSQL} connection. 
#' @return A \code{data.frame} containing tree dbh information in states. 
#' @export
state.dbh.extended = function(state, con = db.options("db")){
  state = get.state(state)
  df = dbGetQuery(con, statement=paste0("SELECT genus, species, genus ||' '|| species as GenusSpecies,",
                                        "TREE.CN, PLT_CN, ",
                                        "DIST, AZIMUTH,",
                                        "TREE.INVYR, TREE.UNITCD, TREE.COUNTYCD, TREE.PLOT,",
                                        "SUBP, TREE, DIA,",
                                        "PLOT.LAT, PLOT.LON, PLOT.ELEV, ",
                                        "HT as HEIGHT, HTCD as HEIGHTCODE, ACTUALHT as ACTUALHEIGHT, CR as COMPACT_CROWN_RATIO ",
                                        "FROM fia.ref_species, fia.tree, fia.plot ",
                                        "WHERE tree.DIAHTCD = 1 and tree.STATECD=", state," and tree.spcd = ref_species.spcd and PLOT.CN = TREE.PLT_CN"))
  df
}


#' Estimates the area of timberland
#' 
#' Provides a numerical result of area of timberland in the U.S.
#' @param con A \code{RPostgreSQL} connection. 
#' @return A \code{data.frame} containing the estimated area in timberland 
#' @export
estimate.area.timberland = function(con = db.options("db")){
  df = dbGetQuery(con, statement = paste0(
    "SELECT SUM(psm.expns * c.condprop_unadj *
(CASE c.prop_basis
    WHEN 'MACR' THEN psm.adj_factor_macr
    ELSE psm.adj_factor_subp END ) -- this is the expression from ref_pop_attribute table
  ) estimate
    FROM fia.cond c,
    fia.plot p,
    fia.pop_plot_stratum_assgn ppsa,
    fia.pop_stratum psm,
    fia.pop_estn_unit peu,
    fia.pop_eval pev,
    fia.pop_eval_typ pet,
    fia.pop_eval_grp peg
    WHERE p.cn = c.plt_cn
    AND pet.eval_typ = 'EXPCURR'
    AND c.cond_status_cd = 1
    AND c.reservcd = 0
    AND c.siteclcd IN (1, 2, 3, 4, 5, 6)
    -- this is the where_clause from ref_pop_attribute table
    AND ppsa.plt_cn = p.cn
    AND ppsa.stratum_cn = psm.cn
    AND peu.cn = psm.estn_unit_cn
    AND pev.cn = peu.eval_cn
    AND pev.cn = pet.eval_cn
    AND pet.eval_grp_cn = peg.cn
    AND peg.eval_grp = 272003"
  ))
  df
}

#' Estimates the area of Live Trees on Forest Land
#' 
#' Provides a count of numerical values on forest level.
#' @param con A \code{RPostgreSQL} connection. 
#' @return A \code{data.frame} containing the estimated area. 
#' @export
estimate.trees.forest = function(con = db.options("db")){
  df = dbGetQuery(con, statement = paste0(
  "SELECT SUM(psm.expns * t.tpa_unadj *
   CASE dia
  WHEN null THEN
  psm.adj_factor_subp
  ELSE 
  CASE least(t.dia, 5 - 0.001)
  WHEN t.dia THEN psm.adj_factor_micr
  ELSE 
  CASE least(t.dia, coalesce(p.macro_breakpoint_dia, 9999) - 0.001)
  WHEN t.dia THEN psm.adj_factor_subp
  ELSE psm.adj_factor_macr
  END
  END
  END
  -- this is the expression from ref_pop_attribute table
  ) estimate
  FROM fia.cond c,
  fia.plot p,
  fia.tree t, -- tree table must be included for tree-level estimates
  fia.pop_plot_stratum_assgn ppsa,
  fia.pop_stratum psm,
  fia.pop_estn_unit peu,
  fia.pop_eval pev,
  fia.pop_eval_typ pet,
  fia.pop_eval_grp peg
  WHERE p.cn = c.plt_cn
  AND pet.eval_typ = 'EXPVOL'
  AND t.plt_cn = c.plt_cn
  AND t.condid = c.condid
  AND c.cond_status_cd = 1
  AND t.statuscd = 1
  AND t.dia >= 1.0 -- additional where_clause from ref_pop_attribute table
  AND ppsa.plt_cn = p.cn
  AND ppsa.stratum_cn = psm.cn
  AND peu.cn = psm.estn_unit_cn
  AND pev.cn = peu.eval_cn
  AND pev.cn = pet.eval_cn
  AND pet.eval_grp_cn = peg.cn
  AND peg.eval_grp = 272003 -- the desired evaluation group must be specified"
  )
  )
  
  df
}


#' Estimates the area of Seedlings on Forest Land
#' 
#' Provides a count of numerical values on forest level.
#' @param con A \code{RPostgreSQL} connection. 
#' @return A \code{data.frame} containing the estimated area. 
#' @export
estimate.seedlings.live = function(con = db.options("db")){
  df = dbGetQuery(con, statement = paste0("SELECT SUM(psm.expns * s.tpa_unadj * psm.adj_factor_micr
-- expression from ref_pop_attribute table
) estimate
FROM fia.cond c,
fia.plot p,
fia.seedling s,
-- seedling table must be included for seedling-level estimates
fia.pop_plot_stratum_assgn ppsa,
fia.pop_stratum psm,
fia.pop_estn_unit peu,
fia.pop_eval pev,
fia.pop_eval_typ pet,
fia.pop_eval_grp peg
WHERE p.cn = c.plt_cn
AND pet.eval_typ = 'EXPVOL'
AND s.plt_cn = c.plt_cn
AND s.condid = c.condid
AND c.cond_status_cd = 1
AND c.reservcd = 0
AND c.siteclcd IN (1, 2, 3, 4, 5, 6)
-- additional where_clause from ref_pop_attribute table
AND ppsa.plt_cn = p.cn
AND ppsa.stratum_cn = psm.cn
AND peu.cn = psm.estn_unit_cn
AND pev.cn = peu.eval_cn
AND pev.cn = pet.eval_cn
AND pet.eval_grp_cn = peg.cn
AND peg.eval_grp = 272003 -- the desired evaluation group must be specified")
  )
  
  df
}




