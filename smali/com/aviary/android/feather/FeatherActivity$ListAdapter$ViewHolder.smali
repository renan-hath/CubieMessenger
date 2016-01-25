.class Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/FeatherActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/aviary/android/feather/FeatherActivity$ListAdapter;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity$ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/FeatherActivity$ListAdapter;

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;->this$1:Lcom/aviary/android/feather/FeatherActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
