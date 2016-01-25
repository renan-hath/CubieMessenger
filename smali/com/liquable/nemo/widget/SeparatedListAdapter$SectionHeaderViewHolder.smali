.class Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;
.super Ljava/lang/Object;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionHeaderViewHolder"
.end annotation


# instance fields
.field sectionCloseBtn:Landroid/view/View;

.field sectionHeader:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/widget/SeparatedListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/widget/SeparatedListAdapter$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;-><init>()V

    return-void
.end method
