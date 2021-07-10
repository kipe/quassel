SELECT networkid, networkname, identityid, servercodec, encodingcodec, decodingcodec,
       userandomserver, perform, useautoidentify, autoidentifyservice, autoidentifypassword,
       useautoreconnect, autoreconnectinterval, autoreconnectretries, unlimitedconnectretries,
       rejoinchannels, usesasl, saslaccount, saslpassword, usecustomessagerate,
       messagerateburstsize, messageratedelay, unlimitedmessagerate, skipcaps
FROM network
WHERE userid = :userid
