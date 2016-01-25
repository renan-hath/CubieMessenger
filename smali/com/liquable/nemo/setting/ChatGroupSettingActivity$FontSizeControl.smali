.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontSizeControl"
.end annotation


# instance fields
.field public final checkbox:Landroid/widget/CheckBox;

.field public final fontSize:I

.field public final layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "checkbox"    # Landroid/widget/CheckBox;
    .param p3, "fontSize"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->layout:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->checkbox:Landroid/widget/CheckBox;

    .line 42
    iput p3, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->fontSize:I

    .line 43
    return-void
.end method
