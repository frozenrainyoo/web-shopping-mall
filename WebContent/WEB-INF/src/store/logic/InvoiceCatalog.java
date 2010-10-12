package store.logic;

import java.util.List;
import store.logic.Invoice;

public interface InvoiceCatalog {
	List getPage(int pagenum);
	Invoice getInvoice(int invoiceId);
	void updateInvoice(Invoice invoice);
}