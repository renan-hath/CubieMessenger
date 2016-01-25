.class public Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I

.field public cellVSpan:I

.field public cellX:I

.field public cellY:I

.field regenerateId:Z

.field x:I

.field y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v0, -0x1

    .line 667
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 668
    iput p1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    .line 669
    iput p2, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    .line 670
    iput p3, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellHSpan:I

    .line 671
    iput p4, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellVSpan:I

    .line 672
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 633
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 634
    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellHSpan:I

    .line 635
    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellVSpan:I

    .line 636
    iput v0, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    .line 637
    iput v0, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    .line 638
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 647
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellHSpan:I

    .line 649
    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellVSpan:I

    .line 650
    iput v0, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    .line 651
    iput v0, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    .line 652
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 7
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "hStartPadding"    # I
    .param p6, "vStartPadding"    # I

    .prologue
    .line 691
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellHSpan:I

    .line 692
    .local v0, "myCellHSpan":I
    iget v1, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellVSpan:I

    .line 693
    .local v1, "myCellVSpan":I
    iget v2, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    .line 694
    .local v2, "myCellX":I
    iget v3, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    .line 696
    .local v3, "myCellY":I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->width:I

    .line 697
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->height:I

    .line 699
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->x:I

    .line 700
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->y:I

    .line 702
    sget-boolean v4, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 703
    const-string/jumbo v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setup. position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " gap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    return-void
.end method
