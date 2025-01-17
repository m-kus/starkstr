#!/bin/bash

# Generate Nostr event data
cd scripts/nostr-data-gen
npm run start
cd ../..

########################################################
# Event 1 
########################################################
EVENT_1_PK_LOW=251912467096364154057891175458070492549
EVENT_1_PK_HIGH=260939768651009451376603063044198637691
EVENT_1_RX_LOW=77051329489827983386539320026376488593
EVENT_1_RX_HIGH=143855497612595372087158556956488272703
EVENT_1_S_LOW=188623336253429538540807746188656707437
EVENT_1_S_HIGH=287350745678731217637630315430431928781
EVENT_1_M_LOW=223834982005398908649898595952193718522
EVENT_1_M_HIGH=280017917956868261785908066628339915890

########################################################
# Event 2 
########################################################
EVENT_2_PK_LOW=251912467096364154057891175458070492549
EVENT_2_PK_HIGH=260939768651009451376603063044198637691
EVENT_2_RX_LOW=179254886315009293379270769450408792068
EVENT_2_RX_HIGH=261274400144833653808376612984563005820
EVENT_2_S_LOW=289056232521786429067368705198197915597
EVENT_2_S_HIGH=245548899942935780949284754593020139506
EVENT_2_M_LOW=141395620408930402826944766468329120551
EVENT_2_M_HIGH=292629853856428677827065209285214751730

########################################################
# Construct the command
########################################################

NOSTR_EVENT_1="${EVENT_1_PK_LOW}, ${EVENT_1_PK_HIGH}, ${EVENT_1_RX_LOW}, ${EVENT_1_RX_HIGH}, ${EVENT_1_S_LOW}, ${EVENT_1_S_HIGH}, ${EVENT_1_M_LOW}, ${EVENT_1_M_HIGH}"
NOSTR_EVENT_2="${EVENT_2_PK_LOW}, ${EVENT_2_PK_HIGH}, ${EVENT_2_RX_LOW}, ${EVENT_2_RX_HIGH}, ${EVENT_2_S_LOW}, ${EVENT_2_S_HIGH}, ${EVENT_2_M_LOW}, ${EVENT_2_M_HIGH}"

CMD_PREFIX="scarb cairo-run"
CMD_ARGS="'[[${NOSTR_EVENT_1}, ${NOSTR_EVENT_2}]]'"
CMD="${CMD_PREFIX} ${CMD_ARGS}"
echo "Running command: ${CMD}"
# Run the command
eval ${CMD}