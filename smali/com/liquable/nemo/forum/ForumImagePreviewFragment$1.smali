.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;
.super Ljava/lang/Object;
.source "ForumImagePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initEmojiWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->emoji_widget:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
