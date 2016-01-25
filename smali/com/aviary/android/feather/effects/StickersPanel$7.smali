.class Lcom/aviary/android/feather/effects/StickersPanel$7;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel;->createIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V
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
    .line 887
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$7;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 890
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$7;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$100(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 891
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$7;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$300(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    .line 892
    return-void
.end method
