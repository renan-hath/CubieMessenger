.class Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;
.super Ljava/lang/Object;
.source "MultipleSelectFriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;->this$0:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "position":I
    iget-object v1, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;->this$0:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->toggleChecked(I)V

    .line 133
    return-void
.end method
