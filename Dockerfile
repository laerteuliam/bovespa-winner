FROM python:3.9.13-alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk add --update --no-cache g++ gcc libxslt-dev
RUN pip3 install --upgrade pip
# RUN pip3 install --no-cache-dir pandas pipe lxml matplotlib yfinance click tabulate  pyperclip pyfolio
RUN pip3 install --no-cache-dir -r ./requirements.txt

COPY . .

CMD [ "python3", "graham.py" ]