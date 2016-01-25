.class Lcom/aviary/android/feather/effects/StickersPanel$4;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel;->onUpdate(Lcom/aviary/android/feather/library/services/PluginService;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$4;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$4;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$100(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 555
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$4;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->updateInstalledPacks(Z)V

    .line 556
    return-void
.end method
