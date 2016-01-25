.class Lcom/liquable/nemo/client/service/ForumService$6;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "ForumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/ForumService;->searchBoards(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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
        "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/ForumService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/ForumService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/ForumService;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ForumService$6;->this$0:Lcom/liquable/nemo/client/service/ForumService;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
