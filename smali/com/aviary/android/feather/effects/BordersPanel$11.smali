.class Lcom/aviary/android/feather/effects/BordersPanel$11;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->onNothingSelected(Landroid/widget/AdapterView;)V
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
    .line 1254
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$11;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$11;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$11;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    .line 1259
    return-void
.end method
