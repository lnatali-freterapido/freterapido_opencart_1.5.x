<?php
class ControllerShippingFreterapido extends Controller {
    public function storeShipping() {
        $this->load->model('checkout/order_meta');

        $order_id = $this->session->data['order_id'];
        $shipping_method = $this->session->data['shipping_method'];

        if ($shipping_method && isset($shipping_method['meta_data'])) {
            $this->model_checkout_order_meta->addMeta($order_id, 'freterapido_quotes', $shipping_method['meta_data']);
        }
    }
}
