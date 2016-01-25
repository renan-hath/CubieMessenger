.class Lcom/liquable/nemo/widget/SeparatedListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/SeparatedListAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/SeparatedListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/SeparatedListAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$1;->this$0:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter$1;->this$0:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
