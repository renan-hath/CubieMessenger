.class Lcom/liquable/nemo/cubiehead/ChattingLite$11;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->initEmojiWidget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 556
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 553
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->chattinglite:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 554
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$11;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 555
    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->createIntentForShop(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
