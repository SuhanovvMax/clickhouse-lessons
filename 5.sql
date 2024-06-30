drop table if exists stage.shk_ext_log;
create table stage.shk_ext_log
(
    shk_id Int64,
    dt     DateTime,
    ext_barcode String
)
engine = MergeTree() order by shk_id;

drop table if exists buf_.shk_ext_log;
create table buf_.shk_ext_log
(
    shk_id Int64,
    dt     DateTime,
    ext_barcode String
)
engine = Buffer('stage', 'shk_ext_log', 16, 10, 100, 10000, 1000000, 1000000, 100000000)

insert into buf_.shk_ext_log (shk_id, dt, ext_barcode) values
(13526441, '2024-05-30 23:04:50', 'efsgjoisjg3213fsdadas1'),
(1352644211, '2024-05-30 23:04:50', 'efsgjoisjg3213dsada1'),
(1352644221, '2024-05-30 23:04:50', 'efsgjoisjg3213vdfgd1'),
(135264424321, '2024-05-30 23:04:50', 'efsgjoisjg321fdsadas31'),
(135264423211, '2024-05-30 23:04:50', 'efsgjoisjg32133212131'),
(13526442351, '2024-05-30 23:04:50', 'efsgjoisjg32133211'),
(13526442321, '2024-05-30 23:04:50', 'efsgjoisjg3213fdsgs1'),
(13526442211, '2024-05-30 23:04:50', 'efsgjoisjg3213dsa1'),
(135264432121, '2024-05-30 23:04:50', 'efsgjoisefsdfdasjg32131'),
(1352647421, '2024-05-30 23:04:50', 'efsgjoisjg32dsa131'),
(1352664421, '2024-05-30 23:04:50', 'efsgjoisjg321dsada31'),
(1352564421, '2024-05-30 23:04:50', 'efsgjoisjg321gdsf31'),
(1354264421, '2024-05-30 23:04:50', 'efsgjoisjg3213dsa1');

select *
from stage.shk_ext_log;
