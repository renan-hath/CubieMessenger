.class Lcom/aviary/android/feather/effects/BordersPanel$5;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlertMultipleItems(Ljava/lang/String;Ljava/util/Set;)V
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
    .line 362
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$5;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$5;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$5;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->searchPlugin(I)V

    .line 367
    return-void
.end method
