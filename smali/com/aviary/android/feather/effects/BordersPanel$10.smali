.class Lcom/aviary/android/feather/effects/BordersPanel$10;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->displayIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V
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
    .line 843
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$10;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$10;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # invokes: Lcom/aviary/android/feather/effects/BordersPanel;->removeIapDialog()Z
    invoke-static {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->access$100(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    .line 847
    return-void
.end method
