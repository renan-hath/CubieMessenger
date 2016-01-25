.class public final enum Lcom/liquable/nemo/rpc/RpcErrorCode;
.super Ljava/lang/Enum;
.source "RpcErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/rpc/RpcErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/rpc/RpcErrorCode;

.field public static final enum DOMAIN_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

.field public static final enum PLATFORM_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

.field public static final enum SECURITY_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

.field public static final enum SYNTAX_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    const-string/jumbo v1, "PLATFORM_ERROR"

    invoke-direct {v0, v1, v3, v3}, Lcom/liquable/nemo/rpc/RpcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->PLATFORM_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    .line 20
    new-instance v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    const-string/jumbo v1, "SYNTAX_ERROR"

    invoke-direct {v0, v1, v5, v4}, Lcom/liquable/nemo/rpc/RpcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->SYNTAX_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    .line 21
    new-instance v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    const-string/jumbo v1, "DOMAIN_ERROR"

    invoke-direct {v0, v1, v4, v7}, Lcom/liquable/nemo/rpc/RpcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->DOMAIN_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    .line 22
    new-instance v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    const-string/jumbo v1, "SECURITY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/rpc/RpcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->SECURITY_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    .line 15
    new-array v0, v7, [Lcom/liquable/nemo/rpc/RpcErrorCode;

    sget-object v1, Lcom/liquable/nemo/rpc/RpcErrorCode;->PLATFORM_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/rpc/RpcErrorCode;->SYNTAX_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/rpc/RpcErrorCode;->DOMAIN_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/rpc/RpcErrorCode;->SECURITY_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->$VALUES:[Lcom/liquable/nemo/rpc/RpcErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/liquable/nemo/rpc/RpcErrorCode;->value:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/rpc/RpcErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/rpc/RpcErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/rpc/RpcErrorCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/liquable/nemo/rpc/RpcErrorCode;->$VALUES:[Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/rpc/RpcErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/rpc/RpcErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/liquable/nemo/rpc/RpcErrorCode;->value:I

    return v0
.end method
