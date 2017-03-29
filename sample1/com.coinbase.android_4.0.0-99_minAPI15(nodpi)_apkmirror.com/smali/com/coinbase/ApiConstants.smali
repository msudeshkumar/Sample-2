.class public Lcom/coinbase/ApiConstants;
.super Ljava/lang/Object;
.source "ApiConstants.java"


# static fields
.field public static final ABOVE:Ljava/lang/String; = "above"

.field public static final ACCESS_TOKEN:Ljava/lang/String; = "oauth/token"

.field public static final ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AUTH_CODE:Ljava/lang/String; = "oauth/authorize/with-credentials"

.field public static BASE_URL_PRODUCTION:Ljava/lang/String; = null

.field public static final BUY:Ljava/lang/String; = "buy"

.field public static final BUYS:Ljava/lang/String; = "buys"

.field public static CLIENT_PLATFORM:Ljava/lang/String; = null

.field public static final COMMIT:Ljava/lang/String; = "commit"

.field public static final COMPLETE:Ljava/lang/String; = "complete"

.field public static final COMPLETED:Ljava/lang/String; = "completed"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currency_code"

.field public static final DEPOSITS:Ljava/lang/String; = "deposits"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FEE:Ljava/lang/String; = "fee"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final IDEM:Ljava/lang/String; = "idem"

.field public static final INSTANT_EXCHANGE_QUOTE:Ljava/lang/String; = "instant_exchange_quote"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NATIVE_CURRENCY:Ljava/lang/String; = "native_currency"

.field public static final PAYMENT_METHOD:Ljava/lang/String; = "payment_method"

.field public static final PAYMENT_METHODS:Ljava/lang/String; = "payment-methods"

.field public static final PENDING:Ljava/lang/String; = "pending"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PRICES:Ljava/lang/String; = "prices"

.field public static final PRIMARY:Ljava/lang/String; = "primary"

.field public static final REQUEST:Ljava/lang/String; = "request"

.field public static final RESEND:Ljava/lang/String; = "resend"

.field public static final SELL:Ljava/lang/String; = "sell"

.field public static final SELLS:Ljava/lang/String; = "sells"

.field public static final SEND:Ljava/lang/String; = "send"

.field public static SERVER_VERSION:Ljava/lang/String; = null

.field public static final SPOT:Ljava/lang/String; = "spot"

.field public static final STARTING_AFTER:Ljava/lang/String; = "starting_after"

.field public static final TIME_ZONE:Ljava/lang/String; = "time_zone"

.field public static final TO:Ljava/lang/String; = "to"

.field public static final TRANSACTIONS:Ljava/lang/String; = "transactions"

.field public static final TRANSFER:Ljava/lang/String; = "transfer"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TZ_OFFSET:Ljava/lang/String; = "tz_offset"

.field public static final USER:Ljava/lang/String; = "user"

.field public static VERSION:Ljava/lang/String; = null

.field public static final WITHDRAWALS:Ljava/lang/String; = "withdrawals"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "https://api.coinbase.com"

    sput-object v0, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    .line 5
    const-string v0, "v2"

    sput-object v0, Lcom/coinbase/ApiConstants;->SERVER_VERSION:Ljava/lang/String;

    .line 6
    const-string v0, "mobile"

    sput-object v0, Lcom/coinbase/ApiConstants;->CLIENT_PLATFORM:Ljava/lang/String;

    .line 7
    const-string v0, "2015-03-20"

    sput-object v0, Lcom/coinbase/ApiConstants;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
