.class Lcom/liquable/nemo/client/service/PurchaseService$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "PurchaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/PurchaseService;->purchaseViaGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/PurchaseService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/PurchaseService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/PurchaseService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/client/service/PurchaseService$1;->this$0:Lcom/liquable/nemo/client/service/PurchaseService;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
