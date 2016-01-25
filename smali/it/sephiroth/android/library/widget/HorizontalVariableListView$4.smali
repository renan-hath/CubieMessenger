.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;
.super Ljava/lang/Object;
.source "HorizontalVariableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postNotifyLayoutChange(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field private final synthetic val$bottom:I

.field private final synthetic val$changed:Z

.field private final synthetic val$left:I

.field private final synthetic val$right:I

.field private final synthetic val$top:I


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;ZIIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$changed:Z

    iput p3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$left:I

    iput p4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$top:I

    iput p5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$right:I

    iput p6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$bottom:I

    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1796
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$changed:Z

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$left:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$top:I

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$right:I

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;->val$bottom:I

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireOnLayoutChangeListener(ZIIII)V
    invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$13(Lit/sephiroth/android/library/widget/HorizontalVariableListView;ZIIII)V

    .line 1797
    return-void
.end method
