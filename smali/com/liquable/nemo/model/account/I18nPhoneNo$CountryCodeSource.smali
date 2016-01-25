.class public final enum Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
.super Ljava/lang/Enum;
.source "I18nPhoneNo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/model/account/I18nPhoneNo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountryCodeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

.field public static final enum FROM_DEFAULT_COUNTRY:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

.field public static final enum FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

.field public static final enum FROM_NUMBER_WITH_IDD:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

.field public static final enum FROM_NUMBER_WITH_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    const-string/jumbo v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    new-instance v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    const-string/jumbo v1, "FROM_NUMBER_WITH_IDD"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    new-instance v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    const-string/jumbo v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    .line 8
    new-instance v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    const-string/jumbo v1, "FROM_DEFAULT_COUNTRY"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    sget-object v1, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->$VALUES:[Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->$VALUES:[Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/account/I18nPhoneNo$CountryCodeSource;

    return-object v0
.end method
