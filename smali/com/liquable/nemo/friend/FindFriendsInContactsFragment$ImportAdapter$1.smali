.class Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter$1;
.super Ljava/lang/Object;
.source "FindFriendsInContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter$1;->this$1:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter$1;->this$1:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;

    iget-object v0, v0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    # invokes: Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->importFromContacts()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->access$000(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V

    .line 69
    return-void
.end method
