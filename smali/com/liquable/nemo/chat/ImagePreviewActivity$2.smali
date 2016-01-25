.class Lcom/liquable/nemo/chat/ImagePreviewActivity$2;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;->initEmojiWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$2;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 448
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 449
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$2;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const-class v2, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$2;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 451
    return-void
.end method
