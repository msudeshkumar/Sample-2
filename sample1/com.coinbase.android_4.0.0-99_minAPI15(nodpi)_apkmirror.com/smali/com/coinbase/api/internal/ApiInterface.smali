.class public interface abstract Lcom/coinbase/api/internal/ApiInterface;
.super Ljava/lang/Object;
.source "ApiInterface.java"


# virtual methods
.method public abstract acceptUserAgreement()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "user/agreement"
    .end annotation
.end method

.method public abstract completeCDVVerification(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods/{id}/complete-ach-cdv"
    .end annotation
.end method

.method public abstract createAchSetupSession(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "ach-setup-sessions"
    .end annotation
.end method

.method public abstract createAddress(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/address/Address;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "user/address"
    .end annotation
.end method

.method public abstract createBankManually(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods"
    .end annotation
.end method

.method public abstract createBankWithAchSetupSession(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods"
    .end annotation
.end method

.method public abstract createBillingAddress(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "billing-addresses"
    .end annotation
.end method

.method public abstract createDeviceToken(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "mobile/device-tokens"
    .end annotation
.end method

.method public abstract createPhoneNumber(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "phone-numbers"
    .end annotation
.end method

.method public abstract createPriceAlert(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "mobile/price-alerts"
    .end annotation
.end method

.method public abstract deleteBillingAddress(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "billing-addresses/{id}"
    .end annotation
.end method

.method public abstract deletePaymentMethod(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "payment-methods/{id}"
    .end annotation
.end method

.method public abstract deletePhoneNumber(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "phone-numbers/{id}"
    .end annotation
.end method

.method public abstract deletePriceAlert(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "mobile/price-alerts/{id}"
    .end annotation
.end method

.method public abstract getAuthCode(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/auth/Auth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "oauth/authorize/with-credentials"
    .end annotation
.end method

.method public abstract getAvailablePaymentMethods(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user/available-payment-methods/{type}"
    .end annotation
.end method

.method public abstract getBillingAddress(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "billing-addresses/{id}"
    .end annotation
.end method

.method public abstract getBillingAddresses()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "billing-addresses"
    .end annotation
.end method

.method public abstract getPhoneNumbers()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "phone-numbers"
    .end annotation
.end method

.method public abstract getPriceChart(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "base_currency"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "fiat_currency"
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/PriceChart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "prices/{base_currency}-{fiat_currency}/historic"
    .end annotation
.end method

.method public abstract getRemainingVerifications(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user/remaining-verifications/{type}"
    .end annotation
.end method

.method public abstract getSepaInformation()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payment-methods/sepa-deposit-information"
    .end annotation
.end method

.method public abstract getUserAgreement()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/agreement/UserAgreement;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user/agreement"
    .end annotation
.end method

.method public abstract paymentCardSetup()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/CardSetup;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods/payment-card-setup-sessions"
    .end annotation
.end method

.method public abstract processPaymentCard(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
    .end annotation
.end method

.method public abstract sendMFA(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "ach-setup-sessions/{id}/send-mfa"
    .end annotation
.end method

.method public abstract startAchVerification(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods/{id}/start-ach-verification"
    .end annotation
.end method

.method public abstract submitMFA(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "ach-setup-sessions/{id}/submit-mfa"
    .end annotation
.end method

.method public abstract verifyCardCDV(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods/{id}/complete-card-verification"
    .end annotation
.end method

.method public abstract verifyPaymentCard(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payment-methods"
    .end annotation
.end method

.method public abstract verifyPhoneNumber(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "phone-numbers/{id}/verify"
    .end annotation
.end method
