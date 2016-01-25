.class Lcom/liquable/nemo/group/ChatGroupListAdapter$1;
.super Ljava/lang/Object;
.source "ChatGroupListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupListAdapter;->createStickerShopButton(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupListAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;->this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    iput-object p2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main_chat_group_list:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method
