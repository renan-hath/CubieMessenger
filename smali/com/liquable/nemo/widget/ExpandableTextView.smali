.class public Lcom/liquable/nemo/widget/ExpandableTextView;
.super Landroid/widget/TextView;
.source "ExpandableTextView.java"


# instance fields
.field private hide:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ExpandableTextView;->setHeight(I)V

    .line 20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ExpandableTextView;->setVisibility(I)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/ExpandableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ExpandableTextView;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    return v0
.end method


# virtual methods
.method public hide(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/ExpandableTextView;->setText(I)V

    .line 26
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    .line 30
    new-instance v0, Lcom/liquable/nemo/widget/ExpandableTextView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/ExpandableTextView$1;-><init>(Lcom/liquable/nemo/widget/ExpandableTextView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/widget/ExpandableTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public show(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/ExpandableTextView;->setText(I)V

    .line 43
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-boolean v1, p0, Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/ExpandableTextView;->setVisibility(I)V

    goto :goto_0
.end method
