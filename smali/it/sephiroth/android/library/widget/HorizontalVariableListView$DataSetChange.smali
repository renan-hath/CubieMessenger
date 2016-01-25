.class public final Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
.super Ljava/lang/Object;
.source "HorizontalVariableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataSetChange"
.end annotation


# instance fields
.field position:I

.field status:I

.field viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->status:I

    .line 52
    return-void
.end method

.method private check(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 118
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->status:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public added()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->check(I)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->status:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->viewType:I

    .line 95
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    .line 88
    const/16 v0, 0x10

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->status:I

    .line 89
    return-void
.end method

.method public invalidated()Z
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->check(I)Z

    move-result v0

    return v0
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->check(I)Z

    move-result v0

    return v0
.end method

.method public replaced()Z
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->check(I)Z

    move-result v0

    return v0
.end method
