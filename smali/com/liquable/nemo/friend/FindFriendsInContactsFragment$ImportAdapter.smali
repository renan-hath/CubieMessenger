.class Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;
.super Landroid/widget/BaseAdapter;
.source "FindFriendsInContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300df

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "inflate":Landroid/view/View;
    const v2, 0x7f08025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "importBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter$1;-><init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    move-object p2, v1

    .line 73
    .end local v0    # "importBtn":Landroid/view/View;
    .end local v1    # "inflate":Landroid/view/View;
    :cond_0
    return-object p2
.end method
