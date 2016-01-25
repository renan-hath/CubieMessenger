.class Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$1;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;


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
    .line 1826
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$1;->this$1:Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemStartDrag(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
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
    .line 1830
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$1;->this$1:Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    # invokes: Lcom/aviary/android/feather/effects/StickersPanel;->startDrag(Landroid/widget/AdapterView;Landroid/view/View;IJZ)Z
    invoke-static/range {v0 .. v6}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1800(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/widget/AdapterView;Landroid/view/View;IJZ)Z

    move-result v0

    return v0
.end method
