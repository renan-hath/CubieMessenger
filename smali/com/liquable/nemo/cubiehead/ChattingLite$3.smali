.class Lcom/liquable/nemo/cubiehead/ChattingLite$3;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$3;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IDomainMessage;

    .line 206
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    if-nez v0, :cond_1

    .line 219
    .end local v0    # "domainMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_0
    :goto_0
    return-void

    .line 209
    .restart local v0    # "domainMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_1
    instance-of v3, v0, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 210
    check-cast v2, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 211
    .local v2, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 212
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 213
    .local v1, "paintFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/liquable/nemo/message/model/PaintMessage;

    .end local v0    # "domainMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-static {v3, v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    goto :goto_0
.end method
