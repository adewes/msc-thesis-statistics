p=pop.new();
--dir="data/terror";
--dir="data/es_morgan_stanley_ts=10";
--This is the copula we used in this sample:
--mix(0.5,STAT::normal_copula(u,v,-0.7),mix(0.4,STAT::gumbel_copula(u,v,4.0),STAT::clayton_copula(u,v,2.0)));
dir="data/copula_test_mixture";
--dir="data/var_msft_hurst";
--dir="data/distri";
pop.output_dir(p,dir);
logger.reopen(dir);
print("Mutation rate:",pop.mutation_rate(p,0.05),"\n");
print("Shrink rate:",pop.shrink_rate(p,0.025),"\n");
print("Crossover size:",pop.crossover_size(p,0.5),"\n");
print("Tournament size:",pop.tournament_size(p,10),"\n");
pop.create(p,1000,10,program.copula);
--pop.create(p,1000,10,program.copula,"data/stocks/dow.csv","data/stocks/bearx.csv",6,",");
--pop.create(p,1000,10,program.terror);
--pop.create(p,10000,10,program.es,"data/var_morgan_stanley/best_46.tsv");
--pop.create(p,1000,10,program.var);
--pop.create(p,1000,10,program.var,"data/stocks/msft.csv",6,",");
--pop.create(p,1000,10,program.var);
--pop.create(p,10000,10,program.distribution,"data/stocks/dow.csv",6,",",1);
pop.run(p,100);
exit(0);