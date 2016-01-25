.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;
.super Ljava/lang/Object;
.source "HorizontalVariableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;)V
    .locals 0

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireOnScrollChanged()V
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$10(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    .line 1806
    return-void
.end method
