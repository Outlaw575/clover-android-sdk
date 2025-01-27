// IRawExtTransactionService.aidl
package com.clover.sdk.v3.payment.raw.service;

import com.clover.sdk.v3.payment.raw.model.EntryMode;
import com.clover.sdk.v3.payment.raw.model.ExchangeContactlessRequest;
import com.clover.sdk.v3.payment.raw.model.FinishChipRequest;
import com.clover.sdk.v3.payment.raw.model.GetCardDataRequest;
import com.clover.sdk.v3.payment.raw.model.GoOnChipRequest;
import com.clover.sdk.v3.payment.raw.listener.IRawExtTransactionServiceListener;

interface IRawExtTransactionService {
    void openSession(IRawExtTransactionServiceListener listener);

    Map<String, String> getInfo();

    oneway void checkEvent(in List<EntryMode> supportedEntryModes, in int timeout);

    oneway void getCardData(in GetCardDataRequest request);

    oneway void getPinForSwipe();

    oneway void goOnChip(in GoOnChipRequest request);

    oneway void finishChip(in FinishChipRequest request);

    void waitForCardRemoval();

    void cancelTransaction();

    void closeSession();

    void exchangeContactless(in ExchangeContactlessRequest request);
}