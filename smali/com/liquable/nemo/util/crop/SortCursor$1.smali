.class Lcom/liquable/nemo/util/crop/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/SortCursor;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/SortCursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/SortCursor;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/SortCursor$1;->this$0:Lcom/liquable/nemo/util/crop/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor$1;->this$0:Lcom/liquable/nemo/util/crop/SortCursor;

    const/4 v1, -0x1

    # setter for: Lcom/liquable/nemo/util/crop/SortCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/SortCursor;->access$002(Lcom/liquable/nemo/util/crop/SortCursor;I)I

    .line 51
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor$1;->this$0:Lcom/liquable/nemo/util/crop/SortCursor;

    const/4 v1, -0x1

    # setter for: Lcom/liquable/nemo/util/crop/SortCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/crop/SortCursor;->access$102(Lcom/liquable/nemo/util/crop/SortCursor;I)I

    .line 56
    return-void
.end method
