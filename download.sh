#!/bin/bash

# Copyright (c) Meta Platforms, Inc. and affiliates.
# This software may be used and distributed according to the terms of the Llama 2 Community License Agreement.

read -p "Enter the URL from email: " https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ
echo ""
read -p "Enter the list of models to download without spaces (7B,13B,70B,7B-chat,13B-chat,70B-chat), or press Enter for all: " MODEL_SIZE
TARGET_FOLDER="."             # where all files should end up
mkdir -p ${TARGET_FOLDER}

if [[ $MODEL_SIZE == "" ]]; then
    MODEL_SIZE="7B,13B,70B,7B-chat,13B-chat,70B-chat"
fi

echo "Downloading LICENSE and Acceptable Usage Policy"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"LICENSE"} -O ${TARGET_FOLDER}"/LICENSE"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"USE_POLICY.md"} -O ${TARGET_FOLDER}"/USE_POLICY.md"

echo "Downloading tokenizer"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"tokenizer.model"} -O ${TARGET_FOLDER}"/tokenizer.model"
wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"tokenizer_checklist.chk"} -O ${TARGET_FOLDER}"/tokenizer_checklist.chk"
(cd ${TARGET_FOLDER} && md5sum -c tokenizer_checklist.chk)

for m in ${MODEL_SIZE//,/ }
do
    if [[ $m == "7B" ]]; then
        SHARD=0
        MODEL_PATH="llama-2-7b"
    elif [[ $m == "7B-chat" ]]; then
        SHARD=0
        MODEL_PATH="llama-2-7b-chat"
    elif [[ $m == "13B" ]]; then
        SHARD=1
        MODEL_PATH="llama-2-13b"
    elif [[ $m == "13B-chat" ]]; then
        SHARD=1
        MODEL_PATH="llama-2-13b-chat"
    elif [[ $m == "70B" ]]; then
        SHARD=7
        MODEL_PATH="llama-2-70b"
    elif [[ $m == "70B-chat" ]]; then
        SHARD=7
        MODEL_PATH="llama-2-70b-chat"
    fi

    echo "Downloading ${MODEL_PATH}"
    mkdir -p ${TARGET_FOLDER}"/${MODEL_PATH}"

    for s in $(seq -f "0%g" 0 ${SHARD})
    do
        wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/consolidated.${s}.pth"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/consolidated.${s}.pth"
    done

    wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/params.json"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/params.json"
    wget ${https://download.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoidlx1MDAxYz8jP2E%7EcyIsIlJlc291cmNlIjoiaHR0cHM6XC9cL2Rvd25sb2FkLmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2ODk5MzM3ODB9fX1dfQ__&Signature=HS0gHpW7ItMEZ1A%7Epe18jCuEIxKrBMHn3paqL-EPdESw32VAc%7EckaS6Dd4M2g1-fciBNnTS5yvesW15J0bTWO6a2x7hpR8G9ZRI9K%7EZDKFYjxWroqW4HmRPKSwpZ0DsVT11BaMmuwkCXCBG8c09gItBjJKAGFxzwXisw0dzO3Gi7JmXsE5Q9pJLdoo8Bm9CpGf%7E%7E2hVXNFCdMhKX44mdEP3wyvbc%7Etcyd9a0AiIdhgdhy-f8fzA%7ERUHKjg4ugYVXPVZy36hk5D-8PujNOB1abw0IKE26cn3L2vbVwd0o-0sOxkb%7EWMpXMG33An7AnW%7EOtIBCPifo2xObLETHqNykag__&Key-Pair-Id=K15QRJLYKIFSLZ/'*'/"${MODEL_PATH}/checklist.chk"} -O ${TARGET_FOLDER}"/${MODEL_PATH}/checklist.chk"
    echo "Checking checksums"
    (cd ${TARGET_FOLDER}"/${MODEL_PATH}" && md5sum -c checklist.chk)
done

