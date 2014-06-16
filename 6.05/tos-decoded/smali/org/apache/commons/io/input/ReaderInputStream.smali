.class public Lorg/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final encoderIn:Ljava/nio/CharBuffer;

.field private final encoderOut:Ljava/nio/ByteBuffer;

.field private endOfInput:Z

.field private lastCoderResult:Ljava/nio/charset/CoderResult;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .locals 2

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iput-object p2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private fillBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Byte array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p3, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    if-lez p3, :cond_6

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0
.end method
