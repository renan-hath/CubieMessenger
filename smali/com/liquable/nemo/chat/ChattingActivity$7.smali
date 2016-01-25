.class Lcom/liquable/nemo/chat/ChattingActivity$7;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initEmojiWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$7;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 724
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 725
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$7;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$600(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 726
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$7;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->enterShop()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$700(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 727
    return-void
.end method
