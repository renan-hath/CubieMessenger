.class public final enum Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
.super Ljava/lang/Enum;
.source "LoginErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/LoginErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

.field public static final enum AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

.field public static final enum PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

.field public static final enum UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

.field public static final enum VERSION_INCOMPATIABLE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    const-string/jumbo v1, "PLATFORM_ERROR"

    invoke-direct {v0, v1, v3, v3}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    new-instance v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    const-string/jumbo v1, "AUTHENTICATION_FAIL"

    invoke-direct {v0, v1, v4, v4}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    new-instance v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    const-string/jumbo v1, "UNKNOWN_CODE"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    new-instance v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    const-string/jumbo v1, "VERSION_INCOMPATIABLE"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->VERSION_INCOMPATIABLE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->VERSION_INCOMPATIABLE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->$VALUES:[Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->code:I

    .line 22
    return-void
.end method

.method public static getByCode(I)Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 10
    invoke-static {}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->values()[Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 11
    .local v0, "type":Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 15
    .end local v0    # "type":Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    :goto_1
    return-object v0

    .line 10
    .restart local v0    # "type":Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v0    # "type":Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->$VALUES:[Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    return-object v0
.end method


# virtual methods
.method getCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->code:I

    return v0
.end method
