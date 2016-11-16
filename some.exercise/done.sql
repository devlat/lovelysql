select a.f_player,
       count(case when a.props @> '{"2": [10]}' then id
                  else null end) count,
       string_agg((case when a.props @> '{"2": [10]}' then id
                  else null end)::varchar, ',') ids
from match_events a
where a.f_team = 3063
group by a.f_player;

DROP TABLE match_events;
DROP TABLE c_action;
DROP TABLE f_player;
DROP TABLE f_team;
