.class public Lcom/googlecode/androidilbc/Codec;
.super Ljava/lang/Object;
.source "Codec.java"


# static fields
.field public static final BLOCKL_20MS_TIMES_2:I = 0x140

.field private static final INSTANCE:Lcom/googlecode/androidilbc/Codec;

.field public static final NO_OF_BYTES_20MS:I = 0x26


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/googlecode/androidilbc/Codec;

    invoke-direct {v0}, Lcom/googlecode/androidilbc/Codec;-><init>()V

    sput-object v0, Lcom/googlecode/androidilbc/Codec;->INSTANCE:Lcom/googlecode/androidilbc/Codec;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "ilbc-codec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/googlecode/androidilbc/Codec;->init(I)I

    .line 23
    return-void
.end method

.method private native init(I)I
.end method

.method public static instance()Lcom/googlecode/androidilbc/Codec;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/googlecode/androidilbc/Codec;->INSTANCE:Lcom/googlecode/androidilbc/Codec;

    return-object v0
.end method


# virtual methods
.method public native decode([BII[BI)I
.end method

.method public native encode([BII[BI)I
.end method
