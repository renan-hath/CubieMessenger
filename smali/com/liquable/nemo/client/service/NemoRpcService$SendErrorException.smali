.class Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;
.super Ljava/lang/RuntimeException;
.source "NemoRpcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/service/NemoRpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x165b20f07587f182L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/client/service/NemoRpcService$1;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;-><init>()V

    return-void
.end method
