.class Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BoardCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/BoardCategoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field categoryTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardCategoryListAdapter;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/forum/BoardCategoryListAdapter;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/forum/BoardCategoryListAdapter;Lcom/liquable/nemo/forum/BoardCategoryListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListAdapter;
    .param p2, "x1"    # Lcom/liquable/nemo/forum/BoardCategoryListAdapter$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListAdapter;)V

    return-void
.end method
