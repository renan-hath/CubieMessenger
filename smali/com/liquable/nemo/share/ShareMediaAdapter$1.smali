.class Lcom/liquable/nemo/share/ShareMediaAdapter$1;
.super Ljava/lang/Object;
.source "ShareMediaAdapter.java"

# interfaces
.implements Lcom/liquable/nemo/share/OnShowMoreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/ShareMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$1;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMore()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$1;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$1;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    # getter for: Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I
    invoke-static {v1}, Lcom/liquable/nemo/share/ShareMediaAdapter;->access$000(Lcom/liquable/nemo/share/ShareMediaAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    # setter for: Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/share/ShareMediaAdapter;->access$002(Lcom/liquable/nemo/share/ShareMediaAdapter;I)I

    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$1;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->reset()V

    .line 82
    return-void
.end method
