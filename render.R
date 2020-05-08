require(asciicast)

process <- asciicast_start_process(timeout = 10)
junk <- record("preprocessing.R", process = process, typing_speed = .0000000001)

emb <- record("emb.R", process = process, typing_speed = 0.1)
saveRDS(emb, "emb.RDS")
write_svg(emb, path = "emb.svg", window = FALSE, cursor = FALSE)

create_corpus <- record("create_corpus.R", process = process, typing_speed = 0.1)
saveRDS(create_corpus, "create_corpus.RDS")
write_svg(create_corpus, path = "create_corpus.svg", window = FALSE, cursor = FALSE)

boe <- record("boe.R", process = process, typing_speed = 0.1)
saveRDS(boe, "boe.RDS")
write_svg(boe, path = "boe.svg", window = FALSE, cursor = FALSE)

filter_dfm <- record("filter_dfm.R", process = process, typing_speed = 0.1)
saveRDS(filter_dfm, "filter_dfm.RDS")
write_svg(filter_dfm, path = "filter_dfm.svg", window = FALSE, cursor = FALSE)

x <- record("save_everything.R", process = process, typing_speed = 0.00001)
