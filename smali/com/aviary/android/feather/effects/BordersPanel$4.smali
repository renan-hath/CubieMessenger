.class Lcom/aviary/android/feather/effects/BordersPanel$4;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlertMultiplePlugins(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$4;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$4;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "pname":Ljava/lang/String;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$4;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$4;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    .line 342
    return-void
.end method
