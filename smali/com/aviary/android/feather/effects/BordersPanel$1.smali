.class Lcom/aviary/android/feather/effects/BordersPanel$1;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;

.field final synthetic val$packageName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->val$packageName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PluginNeedsUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->val$packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 290
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->val$packageName:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$1;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    .line 291
    return-void
.end method
