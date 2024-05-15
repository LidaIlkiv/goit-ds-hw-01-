FROM python:3.12-alpine
ENV ADDRESS_BOOK_HOME /AddressBook
WORKDIR $ADDRESS_BOOK_HOME
COPY . .
RUN pip install -r requirements.txt
EXPOSE 3306
ENTRYPOINT [ "python", "address_book.py" ]
