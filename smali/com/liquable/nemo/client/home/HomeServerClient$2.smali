.class Lcom/liquable/nemo/client/home/HomeServerClient$2;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "HomeServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/home/HomeServerClient;->findForumBoardBannerItem(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/home/HomeServerClient;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/home/HomeServerClient;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/liquable/nemo/client/home/HomeServerClient$2;->this$0:Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
