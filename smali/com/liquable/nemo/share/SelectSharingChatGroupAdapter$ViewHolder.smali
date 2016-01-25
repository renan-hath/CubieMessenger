.class Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field memberIcon:Landroid/widget/ImageView;

.field selectedBg:Landroid/widget/ImageView;

.field topicTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;-><init>()V

    return-void
.end method
