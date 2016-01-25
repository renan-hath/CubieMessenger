.class Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$2;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$2;->this$1:Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1839
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    .line 1840
    check-cast v1, Ljava/lang/String;

    .line 1841
    .local v1, "sticker":Ljava/lang/String;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$2;->this$1:Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    const/4 v3, 0x0

    # invokes: Lcom/aviary/android/feather/effects/StickersPanel;->addSticker(Ljava/lang/String;Landroid/graphics/RectF;)V
    invoke-static {v2, v1, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1900(Lcom/aviary/android/feather/effects/StickersPanel;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 1842
    const/4 v2, 0x1

    return v2
.end method
