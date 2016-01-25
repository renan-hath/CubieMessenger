.class Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;
.super Ljava/lang/Object;
.source "MultipleSelectFriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field friendState:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field isNewFriendImageView:Landroid/widget/ImageView;

.field itemFriendMemberIcon:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field nameFromContact:Landroid/widget/TextView;

.field selectedBg:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;-><init>()V

    return-void
.end method
