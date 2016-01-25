.class Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecorationMenuAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;->context:Landroid/content/Context;

    .line 254
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 263
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 277
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030109

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 283
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .local v0, "itemView":Landroid/view/View;
    :goto_0
    const v4, 0x7f0802a2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, "menuTextView":Landroid/widget/TextView;
    const v4, 0x7f0802a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 286
    .local v2, "menuImageView":Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_1
    return-object v0

    .line 280
    .end local v0    # "itemView":Landroid/view/View;
    .end local v2    # "menuImageView":Landroid/widget/ImageView;
    .end local v3    # "menuTextView":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .restart local v0    # "itemView":Landroid/view/View;
    goto :goto_0

    .line 288
    .restart local v2    # "menuImageView":Landroid/widget/ImageView;
    .restart local v3    # "menuTextView":Landroid/widget/TextView;
    :pswitch_0
    const v4, 0x7f0d03b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 289
    const v4, 0x7f0204d4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 292
    :pswitch_1
    const v4, 0x7f0d03b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 293
    const v4, 0x7f0204d3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
