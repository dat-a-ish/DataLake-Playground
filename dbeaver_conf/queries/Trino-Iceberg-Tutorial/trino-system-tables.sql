select * from system.runtime.nodes;

select x.node_id, y.coordinator, x.query_id, x.state, x."start", x."end", z.query
from "system".runtime.tasks x,
  system.runtime.nodes y,
  "system".runtime.queries z
where x.node_id = y.node_id
  and x.query_id = z.query_id
order by x."start" desc;

select * from "system".runtime.queries
