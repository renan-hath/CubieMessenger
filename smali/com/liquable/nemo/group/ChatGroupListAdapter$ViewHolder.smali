.class Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/ChatGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field itemChatGroupMemberIcon:Landroid/view/View;

.field lastMsgTextView:Landroid/widget/TextView;

.field lastUpdateTime:Landroid/widget/TextView;

.field memberIcon:Landroid/widget/ImageView;

.field recentPictureGroup:Landroid/widget/LinearLayout;

.field recentPictures:[Landroid/widget/ImageView;

.field topicTextView:Landroid/widget/TextView;

.field unreadCountBg:Landroid/widget/ImageView;

.field unreadCountTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/group/ChatGroupListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$1;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;-><init>()V

    return-void
.end method
