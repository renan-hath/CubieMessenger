.class Lcom/aviary/android/feather/widget/IAPDialog$2;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog;->processPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;

.field final synthetic val$plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iput-object p2, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->val$plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$700(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/AviaryMainController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unpurchased("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->val$plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") : StoreButtonClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 476
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$700(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/AviaryMainController;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->val$plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->val$plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->downloadPlugin(Ljava/lang/String;I)V

    .line 478
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog$2$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/IAPDialog$2$1;-><init>(Lcom/aviary/android/feather/widget/IAPDialog$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
